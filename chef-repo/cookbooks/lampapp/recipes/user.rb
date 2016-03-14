user 'automation' do
  comment 'automation user'
  shell '/bin/false'
  supports :manage_home => true
  home '/home/automation'
  shell '/bin/bash'
end
