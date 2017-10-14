puts "Deleting old features..."

Feature.destroy_all

puts "Creating new features..."

features_attributes = [
  {
    header: "Email Tracking",
    subhead: "Tracking Emails Made Easy",
    description: "If you are wondering what happens to your outgoing emails after you hit send, then you’ve come to the right place. Meet Mailbutler - the email extension, which allows you to track emails in Apple Mail and Gmail.",
    video_link: "https://www.youtube.com/ watch?v=BriJb4YNyqo",
    cloundinary_img_id: "bhwkf7wvspkox0k22rvl"
  },
]

Feature.create!(features_attributes)

puts "Finished creating new features!"
