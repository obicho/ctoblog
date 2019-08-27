---
title: "A CTO’s Startup Journey in Beijing Zhongguancun Science Park"
date: 2015-12-03T00:42:36-07:00
draft: false
toc: false
images:
---

After 10+ hours of flight, I finally arrived in Beijing.

The invitation was hard to resist. The opportunity to start a new venture in Beijing sounded like an adventure not to be missed. This brought me to Beijing. My other co-founders literally got the keys to our loft that very same day I arrived. I was greeted by my CEO who just dashed in from the hospital as someone in his family had passed away a few hours earlier. When I walked into our loft, the carpet was still wet from cleaning and the room had a moldy and smoky smell. There was a Texas Hold'em poker table, a couple of broken office chairs and an old sofa bed. No welcome party of any sort. It was midnight and I was tired - so I just crashed.
As crazy as it might sound, this is how it got started.


---

#### Setting Up
We set up our office in Zhongguancun Science Park because historically it has been a hub for startups in Beijing. Baidu, 36Kr, and many others all had founded their offices within walking distance from our office. Plenty of investors, VCs and incubators also set up shop there.

We rented a loft office in ZhongguancunDespite the lack of proper physical infrastructure in our loft, we managed to have a productive first week. We cleaned and decorated our loft. We also added a couple more desks and chairs. Eventually, our work place turned to be nice after some serious efforts.
On the business front, we decided on a name for our service and explored services that help with company registration, banking and permits. My co-founders focused mainly on these.

On the tech side, I started planning for the technology stack and registering the domain names for our website and services. In the US, this would be a simple task as GoDaddy and many other registrars readily offer their services online. In China, this step is convoluted. Registering for a domain name is not enough to set up a website. A website must go through an ICP filing procedure before your website is accessible from within China.

This process took us almost 2 months because we made the mistake of registering our main website domain using a non-China registrar in the beginning. To complete ICP filing procedure, the domain is required to be transferred to a China registrar first. This would have taken weeks. So, to expedite things, we just registered for a new domain name but still the process took a while. Further more, a filing with the Beijing police was also required. Lots of paper work.

Choosing a cloud-based web service provider in China was no easy feat. Lots of options. In China, we needed to evaluate performance, reliability and complex pricing structures. In the US, everybody in startup uses AWS so it is no brainer. At the time when we started (early 2015), Amazon just started their service in China and they didn't have a very comprehensive and reliable service. So I looked into other service providers. A few big names are Tencent Cloud , Grand Cloud, uCloud and many more. Eventually, we settled on Alibaba's Aliyun. I got to say that they have copied AWS well; their uptime and other complementary services (site monitoring, database, redundancy, firewall solutions, etc) were decent.

#### Hiring
KB Street Team, summer 2015.China has a lot of people but good technical staff are hard to come by in Beijing. Basically, this is a problem of supply and demand, just like the Bay Area. Established companies and post Series-A startups offer really good packages to attract talents therefore to find good staff for a small startup, you'd need to have a winning startup story, a charismatic leadership team and some luck.

We started by setting up job postings on Lagou. Our first hire (and many subsequent hires) came through this avenue. This was by far the closest thing to a Dice.com or Stackoverflow job board for techies. The ease-of-use, the modern user interface and its effectiveness caught me by surprise.

My process for vetting employees weren't that dissimilar to the way I had hired in the US. However, I placed a strong emphasis on hiring programmers who can literally code on the spot. This was to weed out imposters who claim to know stuff, which was fairly common. Also, another major thing to look out for was that candidates who are recent graduates from trade schools or less well-known colleges tend to be problematic down the road.

Chinese employees typically don't stick around for very long; on average developers leave or get fired within a year from joining. So companies compete fiercely for talents and poaching is common. To address this, we were constantly collecting resumes and interviewing candidates, even if the positions had been filled. In the beginning, we were informal in our hiring so we brought on some staff without proper screening. This actually led to some major problems for us. So, never hire on a whim. If a Chinese employee is not performing, just let them go fast.

Another thing to keep in mind is that if your technology stack consist of relative new technologies, such as React or Meteor, you'd have a tough time finding developers. At the end, we picked Nginx, uWSGI, Django, Python, Memcached, MongoDB, MySQL for our backend and Bootstrap for our front end. It was relatively easy to find coders for these technologies. Php is also commonly used in China.

#### Managing software development
It pays to think twice before committing to a project management software tool. In the US, most teams would have a ton to choose from: Basecamp, Trello, Asiana, etc. Since we didn't want to deal with hosting this ourselves so Jira or Trac was out of the question. We decided on Trello but it was a mistake. While it worked great in the US, the service was too slow in China. Eventually, we settled on Tower (Chinese solution). It was fast and did the job. It came with a browser version and an app version.

Similarly for source code repo, we ran into performance problems with BitBucket and GitHub in China. So we switched to Git@OSC. The service was a bit unpredictable at times but acceptable for the most part.

Our software platform was mainly designed for desktop use, so for our mobile site, we used a H5 mobile site generator called Chuye, which worked out really well.

Since Google Analytics (and many other Google services) weren't available in China so we had to use a China-brew solution. Baidu analytics was a good way to get started. However, later we started using Pikwik, which was not bad since we could host it ourselves. I also heard good things about CNZZ but we have never tried.

On product design, I'd recommend paying attention to Chinese UX norms. Over there, 3rd party login via WeChat QR code is common on most sites. User registration process using mobile phone number was preferred over email address. Initially , we had tried user notifications on SMSs or emails. It was alright. I think our users preferred WeChat notifications. To do that, we signed up for a WeChat Official Account. There is an XML and JSON driven Web API which we used to send our own notifications via WeChat. A lot of things were templatized so development was not too hard. There was no WeChat sandbox so development must be done on a domain registered with WeChat Official Account.

We used scrum to drive our project. It was a good way to communicate our development progress. Since most people we hired came out straight from college or only had a couple years of experience, we would always teach scrum to new hires. This was very helpful, since I had interviewees coming in talking about waterfall development process for startups…

#### Work Culture
Chinese people are extremely hard working. Our team pretty much worked 6-day weeks. We also pulled all-nighters a few times while supporting go-live events and releases. Since most staff we've hired were in their early 20's, the team was fairly energetic and fun. We hosted an off-site hiking event and organized several karaoke dinner parties. They were fantastic for team building.

Chinese employees are a little less direct compared to their Western counterpart. Workers in China don't always voice out their opinion. Sometimes, our staff beat around the bush or told a white lie to express themselves. You'd have to listen carefully in order to understand what really is going on.

When we got to employee number 15, internal communication started to become a major blocking issue. Office politics and mismanagement between departments started to impact us. Finger-pointing, gossiping and backstabbing almost ruined our office culture. We had to reset by firing almost half the team. It was certainly quite an experience.

One particularly high-ranking employee did not take it well. She used sly tactics to try to derail us. We somehow managed to survive it all because we had connections with someone "important". Something like this typically would result in a law suit here in the States. Over there in Beijing, if you know the right people, considered it done.

#### Living in Beijing
Staying in Beijing can be expensive if not planned well in advance. Last minute hotel reservation sometimes got me just a tiny windowless room with a single bed and 3' x 3' shower. I also tried China's AirBnb but I didn't have a very good experience. In addition, Beijing is notorious for its bad traffic and air quality. I didn't want to deal with neither so I always stayed close to the office. Unfortunately, real estate is extremely expensive around Zhongguancun so I didn't have a lot of choice. I ended up crashing in the office a lot. Fortunately, I found staying at a 5-story bathhouse club nearby to be enjoyable. They have an enormous indoor jacuzzi, a sauna area and a massage area. I'd sleep in a hall with giant reclining sofas. After 11pm, it's really quiet. Last but not least, they offer free bathrobe, tooth brush and slippers. They served buffet 4 times a day so I was also well fed (while wearing my bathrobe). All this for just USD 20 a night (massages not included).

One thing to be aware of in China is that some smaller motels or newly established business traveler hotels may not have the permit to host a foreigner overnight (your passport will not be accepted). Just check before going would be my advice.

Getting around Beijing can take a while, no matter what your mode of transportation is. Beijing is simply too vast and traffic is so bad. Just like LA, it is a sprawling metropolis. One advantage for Beijing is that they have a very accessible subway system which covers most of the city. I didn't like Beijing taxi. They stink a lot. There is a local Uber clone called Didi Dache. I'd say I never had a bad experience when the weather was good. When it rained or snowed, it was hard to find a car. All in all, I avoided going out during rush hours and I just walked to my office daily - this saved me a lot of time.

Paying and shopping for things in China are relatively convenient if you have Alipay or WeChat set up on your smart phone for payment. I'd say China is light years ahead compared to the US when it comes to online payment. Many stores and restaurants accept Alipay or WeChat payment from mobile devices. If you are into saving money, you could always buy prepaid coupons from deals websites or mobile apps such as Dianping, Meituan, Noumi, etc. Sometimes, paying with WeChat or Alipay at POS also would give you discounts. Cash is king but definitely not in these scenarios in China.

#### On biz dev & funding
To get our name out, we attended a lot of startup competitions and conferences. There is always something going on every week in Zhongguancun. We tried to attend whenever we got a chance in the beginning. After a while, I stopped going because we got really busy. There were a lot of startup projects and the quality varied so much. Some were clones of a popular idea that had worked in the US but with minor variations or adaptation for the Chinese market. Eventually, we just focused on attending the main events. We got to the final round in a Techcrunch competition in Beijing and we were second runner-up for a competition organized by Plug And Play China. Most of these competitions took place in Shanghai, Beijing, Hangzhou and Suzhou. I know there was a lot going on in Chengdu, Shenzhen, Guangzhou but we never went to any of those.

Many city governments, incubators and accelerators offer large incentives to startup teams. If you meet the requirements, you can get free money, free office space and free warm intros. We were accepted by an incubator program managed by Chuanyebang and we ended up moving our entire office to the incubator. We got 3 months free rent. They were pumped about us in the beginning and wanted to invest. However, we couldn't agree on the terms so that fell through. We started paying for rent afterwards but it was definitely better than the loft (not really any cheaper but better amenities, and, perhaps, more opportunities). There were a lot of startups in that incubator office. Some of them became our customers. The incubator also organized a lot of events. Last time I went there, there was a visiting convoy of about 10+ startup companies from S. Korea. They came looking for partnerships and opportunities with Chinese startup companies. These events helped increase our exposure and raise our awareness of other startups in competing space.

Since we were in the social media business, we leveraged social media influencers to help us gain exposure. We almost never paid cash for their service since we could offer new followers and fame for them when we promoted events online. However, established celebrity influencers typically would want a lucrative deal.

Funding in China is not hard if you can show some potential or profit. We launched our site late April and our VC funding came in (deposited to our bank account) in June. Certainly later rounds do get incredibly harder because you'd need to show your KPI trending north. However, I've heard rumors that IPOs in China aren't difficult to manufacture (I've also heard similar things in the US, too).

Winning startup competitions did help us get noticed. We sometimes had to see 3–4 investors in a day when things got busy. In these meetings, we would talk through our deck. For me, I'd explain the technology / secret sauce behind our platform. For my co-founders, they'd show the charts and explain the growth potentials. We met representatives pretty much from everywhere: Softbank, Tsinghua Investment group, 36kr, Plug and Play China, etc. We also used funding agencies (FA) to get us intros to investors.

#### Closing
Terrible smog in BeijingBeijing is certainly an exciting place to start a venture these days but there will be risks and sacrifices. The startup ecosystem is fairly established. Beijing is just one of the many burgeoning startup hubs, and there are many more within China. As a tech entrepreneur and CTO, I'd recommend going if you are comfortable navigating unfamiliar technology service vendors and rolling up your sleeve when need to. More importantly, to enhance your chances you'd want a trustworthy local co-founder who is intimate with the market you want to tackle. He or she should also be familiar with the startup scene and have the right connections. For me, the only downside of doing it in Beijing is that you'd have to tolerate the bad weather and air pollution. Living expenses can also be quite high. And, not knowing Mandarin in Beijing can be a real pain!
If you find this article interesting or helpful, please follow me on Twitter.


---

#### Update
It's been more than a year since I left the startup. I left for personal reasons. Last I heard they have pivoted to focus on building a tool platform for micro video bloggers/influencers. I'd consider it to be a hard pivot; with domain name change and everything else. Most of the original team members have left to do their own thing. The head count is about 25 +/- 5. They did not find a product-market fit with this new model.

#### Update #2 
Shortly after my last update, the company ran out of funding and closed down.