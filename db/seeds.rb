puts "Deleting old features..."

Feature.destroy_all

puts "Creating new features..."

features_attributes = [
  {
    header: "Email Tracking",
    subhead: "Tracking Emails Made Easy",
    description: "If you are wondering what happens to your outgoing emails after you hit send, then you’ve come to the right place. Meet Mailbutler - the email extension, which allows you to track emails in Apple Mail and Gmail.",
    video_link: "https://www.youtube.com/embed/totAgLfXBMs",
    cloundinary_img_id: "Icon_Tracking"
  },
  {
    header: "Snooze",
    cloundinary_img_id: "Icon_Snooze"
  },
  {
    header: "Signature",
    cloundinary_img_id: "Icon_Signature"
  },
  {
    header: "Task",
    cloundinary_img_id: "Icon_Task"
  },
  {
    header: "Send Later",
    cloundinary_img_id: "Icon_SendLater"
  },
  {
    header: "Attachment",
    cloundinary_img_id: "Icon_Attachment"
  },
]

Feature.create!(features_attributes)

Feature.find_by_header("Email Tracking").offers.create([
  {title: "Open Tracking", description: "Know if, when, where and how often your email was opened"},
  {title: "Link Tracking", description: "Find out whether a link in your email was opened"},
  {title: "Download Tracking", description: "Find out whether an attached file has been downloaded"},
  ])

puts "Finished creating new features!"

puts "Creating new testimonials"

testimonials_attributes = [
  {
    name: "David Balensiefen",
    position: "CEO",
    company: "gridX GmbH",
    cloundinary_img_id: "face_top",
    quote: "Now I can’t imagine to not have MailButler’s assistance every day. It makes a huge difference. It’s very helpful, and can be used just by everyone."
  },
]

Testimonial.create!(testimonials_attributes)

puts "Finished creating new testimonials!"

