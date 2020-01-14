class EmailParser 
  attr_accessor :name, :csv_emails
  
  def initialize(csv_emails)

  @name = name
   @csv_emails = csv_emails
  end 

 def parse 
   csv_emails.split(/\s*,\s*/)
 end 

  def parse 
    csv_emails.split.collect do |address|
      address.split(',') 
    end
    .flatten.uniq 
  end 
end 



parser.parse