require 'csv'
class Investororganization
  include Mongoid::Document
  field:investor,type:String
  field:organization_name,type:String
  field:permalink,type:String
  field:headquarters_location,type:String
  field:description,type:String
  field:rank,type:Integer
  field:website,type:String
  private
  def self.import(file)
    CSV.foreach(file.pathmap, headers:["investor","organization_name","permalink","headquarters_location","description","rank","website"]) do |row|
      self.create! row.to_hash
    end
end
end
