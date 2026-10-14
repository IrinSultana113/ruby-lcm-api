require 'sinatra'

def valid_natural_number?(str)
  return false if str.nil?
  !!(str =~ /\A\d+\z/)
end

get '/irinritu113_gmail_com' do
  x_param = params[:x]
  y_param = params[:y]

  if valid_natural_number?(x_param) && valid_natural_number?(y_param)
    x = x_param.to_i
    y = y_param.to_i

    begin
      lcm_result = x.lcm(y)
      
      lcm_result.to_s
    rescue ZeroDivisionError
      'NaN'
    end
  else
    'NaN'
  end
end

