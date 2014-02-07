# Google Analytics 101

## A quick look around Google Analytics

### Brendan Graetz

![Brendan Graetz](https://pbs.twimg.com/profile_images/2697395233/8dec79da8f5963a4cad4da0ebd6a532d.png "Brendan Graetz on Twitter")

[@bguiz](http://bguiz.com "Brendan Graetz on Twitter")

[datasciventures.bguiz.com](http://datasciventures.bguiz.com "Data Science Adventures")

----

## tl;dr

Google Analtyics is a tool that allows you to glean impressive information and insights about how users interact with your website or app.

These can be used to improve your website, app, and even your core business itself!

---

## Analytics Academy with Google

This is an online course that explains what digital analytics is, and how to use Google's own offering to do it.

It has also been invaluable as a reference in creating this presentation.

---

## Warning!

These slides are all text and can be quite dry.

Get yourself a glass of water!

----

## Reports, filters and analysis

### A sports company

- FooSports: Sports industry, worldwide recognition
- What does the client want to know about themselves - ask them

---

- If the client is selling sporting goods, its primary objectives would be
  - To increase market share within the sector
    - e.g. Reebok, Nike, Adidas and FooSports are in Australia, and FooSports wants to increase its market share from 5% to 15% amongst these brands
  - To expand the existing size of the market
    - e.g. Reebok, Nike, Adidas and FooSports manufacture runners, and 80% of Australians own at least one pair of runners, but the figure is only 20% in neightouring New Zealand. FooSports identifies NZ as a market ripe for taking and is deciding whether to starting playing in this market.

----

- What I would suggest, as sensible starting points
  - Collect data about percentage of traffic by country or region
    - Can we identify any countries where we attain more than a certain volume of traffic, and is a market that we have not entered yet?
    - --> This will help the business to identify which regions to further investigate opening up stores in

---

  - Collect data about traffic medium
    - What is the breakdown of organic vs. referral media?
    - --> This will help the business to work out the potential return on investment in adevrtising of search engine traffic
    - Amongst referral media, what are the top 3 sources of traffic referrals?
    - --> This, again, will help the business to identify which advertiser to work with, or which content publishers to collaborate with

---

  - Collect data about user actions
    - Assuming that the primary objectives are for users to buy products online, and to locate their nearest store
    - Define these as conversion goals, and measure the percentage of times a visiting user hits either of these conversions within a session
    - --> This will help the business to identify how effective their site is in guiding users toward conversions

----

- These should form a good base, a starting point
  - Speak with the stakeholders of FooSports, what are the KPIs that are important to them?
  - Based on the findings gleaned from the sensible starting points, again, let FooSports know, and work together with them to refine more granular things that would need to be done.
  - Take on board feedback from both of the above, and iterate, by incorporating more KPIs, and refining the existing ones
    - e.g. instead of just collecting data about the macro goals for conversion, start collecting data about micro goals that led to each macro goal too
  - Lather, rinse, repeat!

----

### Brand vs. non-brand traffic?

- Use filters on destination.
  - equals
  - starts with
  - regular expression

----

### Scenarios in which high bounce rate is not a sign of a poorly performing page

- Pages that are not interactive
  - e.g. blogs, as readers probably enter to read a particular post, and then have no reason to further interact with it.
  - Although you can get around this by defining event tracking, for example, when the user scrolls to the bottom of the page

---

- Pages where the viewer is expected to stay on and seemingly do nothing for a longer time
  - e.g. a page with video content.
  - This will give a false negative, and to fix it, increase the session timeout duration

---

- Single page applications (or any other JS-heavy page)
  - User only loads one page, and continues interacting with it,but all the interation happens using client-side Javascript, no page loads occur, and thus the user is regarded to have bounced
  - However this should be handled using event tracking, adding events to each of the user interaction considered to be significant.

----

## Landing pages

- The primary objective of a landing page is to catch the user's attention
- Thus the primary goal would be to achieve a low bounce rate
- With this in mind:

---

  - http://www3.imperial.ac.uk/schisto
    - "This iframe is empty ..." message flashes when you load the page for the first time
    - Makes a request to Twitter API that returns HTTP404
    - JS and CSS assets are not concatenated or minified --> page load times can be improved
    - This page is too detailed and complex for a landing page
      - The information on what this site is about only appears about halfway down the page, the usermay have already lost interest by now
    - Does not look great on a mobile device
    - Would I "bounce"? Yes, of course!

---

    - Suggestions
      - Focus on user stories. For example, show an image of someone, and then a quote from him, or his story, in overly large text next to it. Underneath this, "These are the people that we help, [link to more info]"
      - Something like that is far more likely to grab my attention and retain it for long enough to continue browsing the page.

---

  - http://www.wotif.com/hotels/cheap­hotels­sydney.html
    - This page returns a HTTP404
    - But the page is informative, and I was able to navigate to the [intended destination](http://www.wotif.com/search/results?country=AU&region=1&startDay=2014-02-06&adults=2&children=0&formSearch=true&page=1&viewType=all) with just four clicks
    - At a glance I could tell that this site was about finding flights and accomodation
    - Much better than the previous one
    - Design of the page is clean, clutter free
    - Would I "bounce"? No, because I can tell immediately how to get to the service I want, and I can do so very quickly.

----

## Customising Google Analytics to support client objectives

- Going through this step by step:
- Defining the measurement plan

---

Identify business objectives --> design the measurement plan

- Document business objectives
- Identify strategies and tactics to support the business objectives
- Choose metrics that are the key performance indicators (KPIs)
- Decide how the data shouldbe segmented
- Identify the targets for each of the KPIs

---

Document technical infrastructure

- Is the front end a web page or a mobile app
- If it is a mobile app, is it a tradiitional page load per hit, or a single page app
- Are there any other tecnical reasons that would require changes to the technical set up of the analytics?

---

Create an implementation plan

- Setup account, and define a hierarchy of account --> property --> view
- Decide which actions (both macro conversions and micro conversions) should be collected
- Get the relevant code snippets

---

Implement the plan

- Insert the code snippets into the right spots
- View results in the viewsdefined in the analytics web console

---

Maintain and refine

- As more insights are gained, improvements and tweaks are suggested
- Change the plan accordingly, and iterate

----

### Applied to a specific business

- Hotels Combined
  - A company which aggregates hotel rates and reviews, and allows users to search and book hotels on their wesbite and mobile app.
  - Primary objective is to make online sales
  - Secondary objective is to drive brand awareness
- With this info, let's create a Google Analytics strategy for this company

---

- Measurement plan
  1. Define measurements
    - Identify business objectives, design the measurement plan
    - Designing the measurement plan

---

Document business objectives

- Drive online sales of hotel rooms
- Increase brand awareness

---

Identify strategies and tactics to support the business objectives

- Drive online sales of hotel rooms
  - Reduce the number of clicks that it take to get from landing page to reservation confirmation
  - Increase the prominence of the booking options
  - Offer promotions on hotel rates
  - Increase prominence of promotion rates
- Increase brand awareness
  - Introduce referral bonus schemes for existing users
  - Start email orsocial media marketing campaigns

---

Choose metrics that are the key performance indicators (KPIs)

- Drive online sales of hotel rooms
  - Percentage of users who visit the site that book a hotel room
  - Sales volume of all hotel bookings each month
- Increase brand awareness
  - Percentage of traffic referred from the direct and organic media

---

Decide how the data should be segmented

- Key question: Which subsets of our visitors/ customers do we need to know more about?

---

- Segment by chronology:
  - Hotels are seasonal, so segment by date of booking to understnd which weeks in the year hotels rooms will sell themselves, and which weeks need an extra push by means of promotions 

---

- Segment by device type:
  - Do users make booking on their computers, or on the  mobile website, or the smart phone app?

---

- Segment by channel:
  - Where did the users come from? An email marketing campaign (tagged URL), organic (via a search engine result), ... etc

---

- Segment by country/region:
  - Where are your users from, and where are they travelling to? This information will enable the comapny to work out the ROI of advertising spendin various countries.

---

- Segment by customer traits:
  - Segment by first-time and returning customers. This information will allows business to decide how much to invest in retaining existing customer vs acquiring new ones.

---

Identify the targets for each of the KPIs

- Here we are adding actual numbers that are goals for the business.

---

- Prior to adding analytics, the business knows how much sales volume it has, but does not know other things, for example, what the conversion rate for booking a room is when visiting the website.
  - We should ask the business how much their target is for sales volume,based on their current sales volume.
  - We should ask them to estimate how efective their website'sconversion rate is, and use that value to begin with.

---

- For the purposes of this exercise, let's say that their monthly bookings are $20m, and their target is $25m. They estimate that their conversion rate for making a booking is 10%, and would like to increase it to 20%.
- Using these, we come up with KPIs without considering segmentation first, and subsequently, more granular KPIs once we incude selected segments
- The selection of segments should come from the business, but here I have made some reaosnable assumptions about what they might want to target

---

- KPIs, not including segmentation 
  - Drive online sales of hotel rooms
    - Percentage of users who visit the site that book a hotel room should be 20%
    - Sales volume of all hotel bookings each month should be $25m
  - Increase brand awareness
    - Percentage of traffic referred from the direct and organic media should be 20%

---

- KPIs, including segmentation (one exmample)
  - "We suspect that there is a sharp drop off from customers in Europe travellling to Australia during their summer months, which is out winter. We would like to know exactly when this drop off occurs, so as to target promotions to them just before this dropoff occurs to maximise bookings in the last strecth of this window," says the head of sales (hypothetically)

---

- So we track the percentage of users that fall into the European segment (country/ region), and across all weeks of the year for the hotel booking date.
- We look at each week, and identify the week where it drops off, let's say that it is the last week of May, and the drop is from 20% to 5%
- We set a KPI such that the percentage of sales that come from customers living in Europe on the last week of May is 10% for the following year.

---

Document technical infrastructure

- Is the front end a web page or a mobile app? If it is a mobile app, is it a traditional page load per hit, or a single page app? Are there any other tecnical reasons that would require changes to the technical set up of the analytics?

---

- Focusing on the desktop web page:
  - Yes, it is a traditinal webpage, where each page make a new requestto the server, thus tracking macro goals becomes easy.
  - However, the search and filter functions are Javascript based, and that requires Event tracking to be set up, for example, if we want to know the number times customers change their mind about the dates before submitting the form.

---

Create an implementation plan

- Setup account, and define a hierarchy of account --> property --> view
- Decide which actions (both macro conversions and micro conversions) should be collected
- Get the relevant code snippets
- These steps involve moving around the google analytics admin pages, and knowing our way around them

---

- The main thing that needs to be done here is to determine which actions should be tracked. For example:
  - The business wants to to know how many times the average users changes the to and from date in a single page load
    - Register changing the to and from date as a tracking event
  - The business wants to know the percentage of people who search for hotels in more than city/ locale
    - This can be done by regular expression filters, as the site uses query string parmeters for the search results page

---

Implement the plan

- Insert the code snippets into the right spots
- For web pages this invlves inserting javascript snippets appropriately

---

Maintain and refine

- As more insights are gained, improvements and tweaks are suggested
- Change the plan accordingly, and iterate
- By collecting and analysing data as described in the data measurement plan, the business will:

---

- Learn ways in which to improve its site, and then go ahead and implement them

---

- Think of more things that they need to measure, or how to measure the same things that are already measured, but with a deeper level of granularity, e.g. more specific segments or more different types of segments

---

- Furthermore KPIs will be met (or unmet), and new KPIs will be added, and old ones removed.
  - These need to be factored in, and different things will need to be tracked
  - Different analyses will need to be performed n the same data
  - Analytics code snippets in the front end will need to be changed

----

FIN!
