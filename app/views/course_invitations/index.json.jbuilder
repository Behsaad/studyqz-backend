json.array!(@course_invitations) do |course_invitation|
  json.extract! course_invitation, :id, :invitedbyuser_id, :inviteduser_id, :course_id
  json.url course_invitation_url(course_invitation, format: :json)
end
