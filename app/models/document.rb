# == Schema Information
#
# Table name: documents
#
#  id                :integer          not null, primary key
#  title             :string(255)
#  notes             :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  page_file_name    :string(255)
#  page_content_type :string(255)
#  page_file_size    :integer
#  page_updated_at   :datetime
#

class Document < ActiveRecord::Base
  attr_accessible :notes, :title, :page

  has_attached_file :page

  searchable do
    text :title, boost: 5
    text :notes
  end
end
