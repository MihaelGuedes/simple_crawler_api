require 'rails_helper'

RSpec.describe DeviseTokenAuth::SessionsController, type: :controller do
  it { should route(:post, '/auth/sign_in').to(action: :create) }
  it { should route(:delete, '/auth/sign_out').to(action: :destroy) }
end