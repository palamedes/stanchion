class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
# --- Model: 'User' Annotation
# Table Name: users
#
#  id                       :integer(8)     Primary Key, not null
#
#  email                    :string         not null
#  encrypted_password       :string         not null
#  remember_created_at      :datetime       
#  reset_password_sent_at   :datetime       
#  reset_password_token     :string         
#
#  created_at               :datetime       not null
#  updated_at               :datetime       not null
