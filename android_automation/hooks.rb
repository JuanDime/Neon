AfterStep do |step|
  !File.directory?("screnshots")
   FileUtils.mkdir_p("screnshots")

    time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
    screenshot_name = time_stamp + ".png"
    screenshot_file = File.join("screnshots", screenshot_name)
    $driver.screenshot(screenshot_file)
    embed("#{screenshot_file}", "image/png")
 end