require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe JurisdictionsController do

  # This should return the minimal set of attributes required to create a valid
  # Jurisdiction. As you add validations to Jurisdiction, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # JurisdictionsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all jurisdictions as @jurisdictions" do
      jurisdiction = Jurisdiction.create! valid_attributes
      get :index, {}, valid_session
      assigns(:jurisdictions).should eq([jurisdiction])
    end
  end

  describe "GET show" do
    it "assigns the requested jurisdiction as @jurisdiction" do
      jurisdiction = Jurisdiction.create! valid_attributes
      get :show, {:id => jurisdiction.to_param}, valid_session
      assigns(:jurisdiction).should eq(jurisdiction)
    end
  end

  describe "GET new" do
    it "assigns a new jurisdiction as @jurisdiction" do
      get :new, {}, valid_session
      assigns(:jurisdiction).should be_a_new(Jurisdiction)
    end
  end

  describe "GET edit" do
    it "assigns the requested jurisdiction as @jurisdiction" do
      jurisdiction = Jurisdiction.create! valid_attributes
      get :edit, {:id => jurisdiction.to_param}, valid_session
      assigns(:jurisdiction).should eq(jurisdiction)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Jurisdiction" do
        expect {
          post :create, {:jurisdiction => valid_attributes}, valid_session
        }.to change(Jurisdiction, :count).by(1)
      end

      it "assigns a newly created jurisdiction as @jurisdiction" do
        post :create, {:jurisdiction => valid_attributes}, valid_session
        assigns(:jurisdiction).should be_a(Jurisdiction)
        assigns(:jurisdiction).should be_persisted
      end

      it "redirects to the created jurisdiction" do
        post :create, {:jurisdiction => valid_attributes}, valid_session
        response.should redirect_to(Jurisdiction.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved jurisdiction as @jurisdiction" do
        # Trigger the behavior that occurs when invalid params are submitted
        Jurisdiction.any_instance.stub(:save).and_return(false)
        post :create, {:jurisdiction => {  }}, valid_session
        assigns(:jurisdiction).should be_a_new(Jurisdiction)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Jurisdiction.any_instance.stub(:save).and_return(false)
        post :create, {:jurisdiction => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested jurisdiction" do
        jurisdiction = Jurisdiction.create! valid_attributes
        # Assuming there are no other jurisdictions in the database, this
        # specifies that the Jurisdiction created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Jurisdiction.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
        put :update, {:id => jurisdiction.to_param, :jurisdiction => { "these" => "params" }}, valid_session
      end

      it "assigns the requested jurisdiction as @jurisdiction" do
        jurisdiction = Jurisdiction.create! valid_attributes
        put :update, {:id => jurisdiction.to_param, :jurisdiction => valid_attributes}, valid_session
        assigns(:jurisdiction).should eq(jurisdiction)
      end

      it "redirects to the jurisdiction" do
        jurisdiction = Jurisdiction.create! valid_attributes
        put :update, {:id => jurisdiction.to_param, :jurisdiction => valid_attributes}, valid_session
        response.should redirect_to(jurisdiction)
      end
    end

    describe "with invalid params" do
      it "assigns the jurisdiction as @jurisdiction" do
        jurisdiction = Jurisdiction.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Jurisdiction.any_instance.stub(:save).and_return(false)
        put :update, {:id => jurisdiction.to_param, :jurisdiction => {  }}, valid_session
        assigns(:jurisdiction).should eq(jurisdiction)
      end

      it "re-renders the 'edit' template" do
        jurisdiction = Jurisdiction.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Jurisdiction.any_instance.stub(:save).and_return(false)
        put :update, {:id => jurisdiction.to_param, :jurisdiction => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested jurisdiction" do
      jurisdiction = Jurisdiction.create! valid_attributes
      expect {
        delete :destroy, {:id => jurisdiction.to_param}, valid_session
      }.to change(Jurisdiction, :count).by(-1)
    end

    it "redirects to the jurisdictions list" do
      jurisdiction = Jurisdiction.create! valid_attributes
      delete :destroy, {:id => jurisdiction.to_param}, valid_session
      response.should redirect_to(jurisdictions_url)
    end
  end

end
