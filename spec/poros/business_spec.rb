require 'rails_helper'

describe Business do
  it "exists" do
    attr = {
          name: "Xcel Energy",
          image: "https://s3-media1.fl.yelpcdn.com/bphoto/pDZ8YQ098hOq1RzwbFFyWA/o.jpg",
          url: "https://www.yelp.com/biz/xcel-energy-denver?adjust_creative=738p3EdhM6u5_PI1JBbrow&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=738p3EdhM6u5_PI1JBbrow",
          is_closed: false,
          phone: "(800) 895-4999",
          distance: 2708.019879293317,
          location: {:address1=>"321 W Agate Ave", :address2=>"", :address3=>"", :city=>"Granby", :zip_code=>"80446", :country=>"US", :state=>"CO"}
        }

    business = Business.new(attr)
    expect(business).to be_a(Business)
    expect(business.address(attr[:location])).to eq("321 W Agate Ave  Granby CO, 80446")
    expect(business.name).to be_a(String)
    expect(business.image).to be_a(String)
    expect(business.url).to be_a(String)
    expect(business.phone).to be_a(String)
    expect(business.distance).to be_a(Float)
    expect(business.location).to be_a(String)
  end
end
