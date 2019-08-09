class OrganizationsController < ApplicationController
    def index
        render json:{message:"Index Page"}    
    end
    def top50Investors
       @keys= params["Search"].keys
       querystring=""
       @keys.each_with_index do |key,index|
        querystring+=":#{key}.#{Organization.ConvertToRelatedSymbol(params["Search"][key]["key"])}=>#{params["Search"][key]["value"].to_s}"
            unless params["Search"].keys.length-1==index
                querystring+=","
            end
        end 
        querystring.gsub! /"/, '|'

        @orgs=Organization.where(:total_funding_amount.gte=>1000000).limit(10)
        debugger
        investors=Array.new
        @orgs.each do |organization|
            @investor=Investororganization.where(:organization_name.eq=>organization.name)
            investors<<@investor
        end
        debugger
        render json:{message:"Success",data:@orgs}
    end
    
end
