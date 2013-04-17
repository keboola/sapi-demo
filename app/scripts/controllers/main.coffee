'use strict'

angular.module('sapiDemoApp')
  .controller 'MainCtrl', [
    '$scope'
    'kbSapiService'
    ($scope, sapiService) ->
      
      $scope.buckets = []
      $scope.bucketsLoading = false

      $scope.useToken = (token) ->

        sapiService
          .verifyAndSetToken(token)
          .error( (error) ->
            alert "error: #{error.error}"
          )
          .success( ->
            $scope.loadBuckets()
          )

      $scope.loadBuckets = ->
        $scope.bucketsLoading = true
        $scope.buckets = sapiService
          .getBucketsWithTables()
          .success( ->
            $scope.bucketsLoading = false
          )
  ]
