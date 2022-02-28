require 'rails_helper'

RSpec.describe DeviseTokenAuth::RegistrationsController, type: :controller do
  it { should route(:post, '/auth').to(action: :create) }
  it { should route(:put, '/auth').to(action: :update) }
  it { should route(:delete, '/auth').to(action: :destroy) }
end