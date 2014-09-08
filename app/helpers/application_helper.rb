# encoding: utf-8

module ApplicationHelper

    def page_sections
      [
        # ["our_story", "我們的故事"],
        ["about_us", "我們的主角"],
        ["photos", "幸福的影像"],
        # ["bridesmaids", "關於伴娘"],
        # ["groomsmen", "關於伴郎"],
        # ["gifts", "禮物"],
        ["schedule", "宴會流程"],
        ["rsvp", "敬邀參加"],
        ["location", "如何前往"],
        ["behind_scene", "幕後花序"],
        ["to_be_continue", "還有更多"]
        # ["blog", "許多小故事"]
      ]
    end

    def contact
      {
        email: "poc7667@gmail.com"
      }
    end

    def info
      {
        location: {
          name: "香草花緣",
          url: "http://www.herbgarden.com.tw/index.html",
          address: "新北市泰山區磚雅厝10號(新泰國中後方備停車場)"
        },
        date: Date.parse("2014-09-07"),
        time: "AM 11:30",
        meta: "自助婚宴",
        footer_title: "#{page_title} 幸福婚禮(前序-訂婚篇)"
      }
    end

    def role
      {
        en:{
          bride: "Sawa",
          bridegroom: "Jimmy"
        },
        tw:{
          bride: "旻臻",
          bridegroom: "育誌"
        }
      }
    end

    def nav_title
      "#{role[:en][:bride][0]} + #{role[:en][:bridegroom][0]}"
    end

    def page_title
      "#{role[:tw][:bride]} + #{role[:tw][:bridegroom]}"
    end


    #    Returns the full title on a per-page basis.
    def full_title(page_title)
        base_title = "Poc Station"
        if page_title.empty?
            base_title
        else
            "#{base_title} | #{page_title}"
        end
    end

end
