namespace :read_cs_vand_create_record do
  desc "TODO"
  task createInvestorOrganizations: :environment do
    file = Dir.glob("#{Rails.root}/public/products/**/*.csv") #=> This folder directory where read the CSV files
            file.each do |file|
                Investororganization.import(file)
            end
  end

end
