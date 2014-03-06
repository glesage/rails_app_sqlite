#!/bin/bash

rake db:create
rake db:migrate
rails s -d -p 80
/bin/bash