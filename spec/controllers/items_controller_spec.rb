require 'spec_helper'
require 'rails_helper'

describe ItemsController do 

  describe "show action"
    it "renders show template if an items is found" do 
      item = create(:item)
      get :show,{ id: item.id }
  end
  

end