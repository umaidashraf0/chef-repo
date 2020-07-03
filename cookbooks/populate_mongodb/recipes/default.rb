#
# Cookbook:: populate_mongodb
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.


#execute 'connectToMongo' do
#  command 'mongo'
#end

execute 'populateDishes' do
  command 'mongoimport --db conFusion --collection dishes --drop --file /opt/myapp/populate_database/dishes.json --jsonArray'
end

execute 'populateLeaders' do
  command 'mongoimport --db conFusion --collection leaders --drop --file /opt/myapp/populate_database/leaders.json --jsonArray'
end

execute 'populatePromotions' do
  command 'mongoimport --db conFusion --collection promotions --drop --file /opt/myapp/populate_database/promotions.json --jsonArray'
end