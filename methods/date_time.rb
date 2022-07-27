# Exploring the Time and Date Class
# All date objects are unchangeable (immutable)

# Get current date and time
time1 = Time.new
p "Current Time : #{time1.inspect}"
puts

# Using the time object to get various components of Date and Time
time = Time.new

p "Current Time: #{time.inspect}"
p time.year     # Year of the date
p time.month    # Month of the date (1 to 12)
p time.day      # Day of the date (1 to 31)
p time.wday     # 0: Day of week: 0 is Sunday
p time.yday     # 365: Day of year
p time.hour     # 23: 24 hour clock
p time.min      # 59
p time.sec      # 59
p time.usec     # 999999: microseconds
p time.zone     # 'UTC': timezone name
puts

# require 'date' needed to print date on screen
require 'date'

# print Julian day number
p Date.jd(2451377)

# print commercial date
p Date.commercial(2019,5,2)
p Time.new(2019,4,6).to_date
p Date.strptime('07-08-2018', '%d-%m-%Y')

# print ordinal date
p Date.ordinal(2018,15)
p Date.new(2018,4,5)
puts

# Directive used in the strftime method:

# %a: The abbreviated weekday name (for example: Sun ).
# %A: The full name of the weekday (for example: Sunday).
# %b: The abbreviated name of the month(for example: Jan)
# %B: The full name of the month(for example: January )
# %c: The selected local date and time representation
# %d: Day of the month (1 to 31).
# %H: 24-hour clock
# %I: 12-hour clock
# %j: day of the year
# %m: month of the year
# %M: minute
# %p: meridian indicator
# %S: seconds
# %%: % literal
# %z: time zone name
# %Y: year name with the century
# %y: year name without the century
# %X: selected representation of time only
# %x: selected representation of date only
# %w: weekday
# %U: week number of current year, starting with first Sunday
# %W: week number of current year, starting with first Monday
