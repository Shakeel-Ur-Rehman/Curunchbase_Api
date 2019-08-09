class Organization
  include Mongoid::Document
  field:organization_name,type:String
  field:organization_url,type:String
  field:categories,type:String
  field:headquarters_location,type:String
  field:description,type:String
  field:rank,type:Integer                         
  field:last_funding_date,type:String
  field:last_equity_funding_amount,type:Integer 
  field:last_equity_funding_amount_currency,type:String
  field:last_equity_funding_amount_currency_usd,type:Integer 
  field:total_funding_amount,type:Integer
  field:total_funding_amount_currency,type:String
  field:total_funding_amount_currency_usd,type:Integer
  field:funding_status,type:String
  field:category_groups,type:String
  field:headquarter_reigons,type:String
  field:founded_date,type:String
  field:founded_date_percision,type:String
  field:similarweb_monthly_visits,type:Integer
  field:similarweb_monthly_visits_growth,type:String
  field:siftery_total_product_active,type:Integer
  field:siftery_total_product_changes,type:String
  field:apptopia_number_of_apps,type:Integer
  field:apptopia_downloads,type:Integer
  field:builtwith_Active_tech_count,type:Integer
  field:aberdeen_it_spend	,type:Integer
  field:aberdeen_it_spend_currency,type:String
  field:aberdeen_it_spend_currency_usd,type:Integer
  private
  def self.ConvertToRelatedSymbol(text)
  if text=="greater_than_or_equal_to"
    text="gte"
  elsif text=="less_than_or_equal_to"
    text="lte"
  elsif text=="equal_to"
    text="eq"
  elsif text=="before"
    text="lt"
  elsif text=="after"
  text="gt"
  elsif text=="does_not_equal_to"
  text="ne"
end
end
  end
