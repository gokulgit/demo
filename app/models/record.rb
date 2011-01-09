=begin
The Class Record represents a page view by an user 'userid' on page 'pageid'
=end
class Record 
  include MongoMapper::Document
  key :userid, String
  key :pageid, Integer
  timestamps!
  
  validates_presence_of :userid, :pageid

end
