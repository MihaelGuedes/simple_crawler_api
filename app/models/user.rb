# frozen_string_literal: true

class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :locker_locked_at, type: Time
  field :locker_locked_until, type: Time

  ## Database authenticatable
  field :email,              type: String, default: ''
  field :encrypted_password, type: String, default: ''

  ## Recoverable
  field :reset_password_token,        type: String
  field :reset_password_sent_at,      type: Time
  field :reset_password_redirect_url, type: String
  field :allow_password_change,       type: Boolean, default: false

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  ## Confirmable
  field :confirmation_token,   type: String
  field :confirmed_at,         type: Time
  field :confirmation_sent_at, type: Time
  field :unconfirmed_email,    type: String

  ## Required
  field :provider, type: String
  field :uid,      type: String, default: ''

  ## Token
  field :tokens, type: Hash, default: {}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  validates_presence_of :email
end
