every 1.day do
  rake "currencies:update"
end

every 1.day, roles: [:production] do
  rake "sitemap:refresh"
end

every '30 8 * * 1', roles: [:production] do
  rake "quotations:remind_waiting_approval"
end

