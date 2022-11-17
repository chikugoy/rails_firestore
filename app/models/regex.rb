class Regex < Firestore::FirestoreRecord
  COLLECTION_PATH = 'regex'.freeze
  @collection_path = COLLECTION_PATH

  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :id, :string
  attribute :text, :string
  attribute :created_at, :time
  attribute :updated_at, :time

  validates :text, presence: true
  validates :created_at, presence: true
  validates :updated_at, presence: true

  attr_reader :child_model

  def self.self_new(data)
    Regex.new(data)
  end
end