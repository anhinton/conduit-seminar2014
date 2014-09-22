
install.packages("hwriter", lib="~/.OA.Rlibs",
                 repo="http://cran.stat.auckland.ac.nz/")
library(hwriter, lib.loc="~/.OA.Rlibs")

page <- openPage("report.html",
                 css='body { margin-left: auto; margin-right: auto; margin-top: 50px; width: 400px; padding: 20px; border: solid thin }')

# Font families from NZ Herald
hwrite(hmakeTag("h1",
                "Internet Party Carried Over 5% Threshold on Backs of Youth",
                style='font-family: Arial,sans-serif'),
       page)
hwrite(hmakeTag("div",
                paste(hmakeTag("p",
                               "At the last election, 41% of New Zealand Youth (18-24) did not vote.",
                               style="margin-top: 0px;"),
                      hmakeTag("p",
                               paste0("If the Internet Party could get <b>all</b> of those youth votes in this election, they would get <b>",
                                      round(youngNonvotersPercent, 2),
                                      "</b> of the total vote.")),
                      hmakeTag("p",
                               "That, by itself, would exceed the limit required to get the Internet Party into parliament.")),
                style='width: 200px; float: left; font-family: Calibri,Candara,Segoe,Optima,Arial,sans-seri; text-align: justify'),
       page)
hwrite(hmakeTag("p",
                hmakeTag("img",
                         src="http://upload.wikimedia.org/wikipedia/commons/e/e2/Kim_dotcom_crowd_cropped.jpg",
                         width="170px",
                         style="float: right")),
       page)
hwrite(hmakeTag("p",
                'Photo: <a href="https://www.flickr.com/photos/devcentre/9385465939">Peter Harrison</a> CC-BY',
                style="clear: both; font-style: italic; text-align: right; font-size: smaller"),
       page)

closePage(page, splash=FALSE)
