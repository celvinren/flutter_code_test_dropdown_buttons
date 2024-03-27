# flutter_code_test_dropdown_buttons

A new Flutter project.

## Getting Started

This project use riverpod v2 as the state management.
We don't need to consider what provider to use, and we can only focus on the business logic.
The providers will be generate by the riverpod_generator.

This project I created flavor for android but not for iOS for the time being. When you debug the app, choose the flavor you want to debug on only web and android.

In .vscode/launch.json, there are 2 configurations:

1. Launch App with mock data: select dev_mock to launch the app with mock data.
2. Launch App with real data: select dev to launch the app with real data.

I cannot fetch data from the API, so I use a local mock data to simulate the data fetching.
Also, I created a mock repository to simulate the data fetching.

launch.json file should be pushed to the repository with api key and other sensitive information, but this project is just a test project for you to debug the project.

## Commands in this project

flutter pub add dio freezed_annotation json_annotation very_good_analysis
flutter pub add --dev build_runner freezed json_serializable

flutter pub add hooks_riverpod riverpod_annotation flutter_hooks
flutter pub add --dev riverpod_generator

flutter pub run build_runner build --delete-conflicting-outputs
