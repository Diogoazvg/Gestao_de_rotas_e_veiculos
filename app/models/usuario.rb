# == Schema Information
#
# Table name: usuarios
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  matricula              :string
#  nome                   :string
#  nascimento             :date
#  funcao                 :string
#  perfil                 :string
#  cnh                    :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :authentication_keys => [:matricula]#, :validatable
  validates :matricula, presence: true
  validates :nome, presence: true
  validates :nascimento, presence: true
  validates :funcao, presence: true
  validates :perfil, presence: true
  validates :cnh, presence: true
  validates :password, confirmation: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  enum funcao: %w(Técnico Gerente Motorista)
  enum perfil: %w(Atendente Gerente_perfil Administrador)
  enum cnh: %w(A B C D E)

end