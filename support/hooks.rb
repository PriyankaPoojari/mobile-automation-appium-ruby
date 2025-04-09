Before() do
  puts("before hook called")
  $driver.start_driver
end

After() do
  puts("after hook called")
  sleep 3
  $driver.driver_quit
end