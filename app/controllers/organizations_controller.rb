class OrganizationsController < ApplicationController
    def index
        render json:{message:"Index Page"}    
    end
    def top50Investors
       @keys= params["Search"].keys
       @keys.each do |key|
        puts key
       end
        #@orgs=Organization.where(:last_funding_date.gte=>"1000000").limit(10)
        render json:{message:"Success",data:""}
    end
    
end
