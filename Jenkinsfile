node {
        stage 'Checkout'
            checkout scm	

        stage 'Pre-Build'
            sh 'pod install'

        stage 'Build'
            sh 'xcodebuild -workspace "Tester.xcworkspace" -scheme "Tester"  ONLY_ACTIVE_ARCH=NO' 
                stage 'Test'
            sh 'xcodebuild -workspace "Tester.xcworkspace" -scheme "Tester" -sdk iphonesimulator -destination "platform=iOS Simulator,name=iPhone 6s,OS=9.3" test'
        }