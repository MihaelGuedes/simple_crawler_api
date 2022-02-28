require 'rails_helper'

RSpec.describe QuotesController, type: :controller do
  it { should use_before_action(:authenticate_user!) }
end