# Maskan

Maskan is a real estate platform for the Egyptian market, with listings, machine learning price estimates and virtual property tours.

Graduation project, B.Sc. Computers and Data Sciences, Faculty of Computers and Data Science, Alexandria University, 2022/2023.

## How the project ran

- **Phase 1, analysis and design:** the team surveyed people about buying and selling apartments and about fair price estimates, then wrote the requirements and drew the wireframes.
- **Phase 2, implementation:** the team built the backend, website, mobile app and price models.

## What is in this repository

| Folder | What it is | Main technology |
| --- | --- | --- |
| [`mobile/`](mobile) | Android and iOS app: listings, navigation and virtual tour in a WebView | Flutter, Dart, Cubit (BLoC), Dio |
| [`web/`](web) | Web client: property search and details, adding properties, virtual tours and admin login | Angular 15, TypeScript, Bootstrap |
| [`backend/`](backend) | REST API: properties, sellers, buyers, deals, filtered search, pagination, JWT admin login and price prediction | ASP.NET Core, Entity Framework Core, SQL Server, ML.NET |

## Price prediction

Sale and rental prices use separate regression models, both chosen by the automated search in ML.NET Model Builder and served by the API.

| Model | Algorithm | Training data | Features |
| --- | --- | --- | --- |
| Sale | LightGBM | 12,252 records | Type, area, bedrooms, bathrooms, region |
| Rental | FastTree Tweedie | 17,773 records | The same, plus furnished |

The team also prototyped an XGBoost model in Python on a dataset of 52,128 records: [`House-Price-Prediction.py`](backend/Assets/Price%20Prediction/House-Price-Prediction.py).

## Team

Maskan was built by a team of five: Ahmed Gamal, Abdelwahab Kamal, Belal Fahmy, Mahmoud Elwakil and Salman Samir.

- **Mobile app:** Mahmoud Elwakil
- **Backend and price models:** Ahmed Gamal and Abdelwahab Kamal, as shown in the commit history of the original repository
- **Web client:** added to the original repository by Ahmed Gamal

The commit history of this repository shows the mobile app work. The backend and web client were copied here from the team's repository, which keeps their full commit history: https://github.com/Jjemy/Maskan

## Running it locally

These are local development settings from 2023, not a production setup.

- **Backend:** set your SQL Server connection in `backend/appsettings.json`, then run `dotnet run` in `backend/`.
- **Web:** check the API address in `web/src/environments/environment.ts`, then run `npm install` and `npx ng serve` in `web/`.
- **Mobile:** set the API address in `mobile/lib/shared/network/remote/dio_helper.dart`, then run `flutter pub get` and `flutter run` in `mobile/`.
