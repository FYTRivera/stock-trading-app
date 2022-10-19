## Overview
A Ruby on Rails application that allows users to buy and sell mock stocks. Created by Franco Rivera and Junmark Chi of Avion School Batch 19.

Click (here)[http://avion-stock-trading-app.herokuapp.com/] to view the app!

#### Sample Accounts
##### Sample Account 1
email: `franco123@rivera.com`

password: `123456`

##### Sample Account 2
email: `junmark123@chi.com`

password: `123456`

## Features
* Utilized IEX Finance API to pull the latest information on listed stocks.
* Used Devise gem to allow traders to create accounts for the application.
* Created a feature wherein admin accounts can review trader accounts for approval.
* Created a feature wherein a list of the top ten trending stocks is shown to the trader through IEX Finance API.
* Used Ransack gem to let traders search for specific stocks through their respective codes or names.
* Built a dashboard wherein traders can buy and sell stocks.
* Stocks are added to the trader’s portfolio when bought and subtracted from the trader’s portfolio when sold.
* Implemented a feature wherein traders’ portfolios can only be seen by the traders themselves.
* Tested the application using Minitest.

## Version
```
Ruby 3.1.2
Rails 7.0.3
```

## Setup
```
$ bundle install
$ rails db:setup
$ rails db:seed
```

## Starting the application
```
$ rails server
```

