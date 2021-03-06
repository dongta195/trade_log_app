module ApplicationHelper
	def total_money logs
		sum = 0
		logs.each do |log|
			sum = sum + log.money.to_i
		end
		sum
	end

  def format_date_ddMMyyyHHmm(str, hour = "")
    if str!=nil
      date_format = '%d/%m/%Y ' + "#{hour}"
      str.strftime(date_format)
    else
      ''
    end
  end

  def format_date_MMyyy str
    if str!=nil
      date_format = '%m/%Y'
      str.strftime(date_format)
    else
      ''
    end
  end

  def format_money(str, has_unit = true)
    if (has_unit)
      if str == 0 || str.nil?
        ''
      else
        number_with_delimiter(str, delimiter: ".", separator: ",")+" VNĐ"
      end
    else
      if str == 0 || str.nil?
        ''
      else
        number_with_delimiter(str, delimiter: ".", separator: ",")
      end
    end
  end
end
