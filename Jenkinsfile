pipeline {
    agent {
        docker {
            image 'qaninja/rubywd'
        }
    }
    
    stages{
        stage('Build'){
            steps{
                echo 'Building or Resolve Depencencies'
                sh 'rm -f Gemfile.lock'
                sh 'bundle install'
            }
        }
        stage('Test'){
            steps{
                echo 'Running regression tests'
                sh 'bundle exec cucumber -p ci'
            }
            post {
                always{
                    cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'logs/results', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
                }
            }
        }
        stage('Deploy'){
            steps{
                echo 'WebApp is Read'
            }
        }
    }
}