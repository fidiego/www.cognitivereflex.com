---
title: IDP Raids Map
layout: project
order: 1
description: IDP Raids Map and Raid CMS - A Tool for managing the ingress of report of ICE Raids and a map for vizualizing said raids.
---

![Screenshot of ICEWatch](/img/projects/idp/screen_001.png 'ICEWatch')

In 2016, an immigration attorney friend of mine put me in contact with the
<a class="link near-white dim bb" href="https://www.immigrantdefenseproject.org/">Immigrant Defense Project (IDP)</a>.
They had been working on collecting reports of ICE Raids from a number of legal service providers in the New York Metropolitan area and were looking for technical help.
This marked the beginning of a long collaboration with the IDP during which I helped them normalize their data intake and operationalize their data. The final outcome was a map of ICE Raids which we dubbed "ICEWatch".

The first iteration of the project was a Google App script that fetched location data using Google's geocoding api to turn state, city, county information into coordinates.
The script fetched location data then converted the spreadsheet to json and sent the payload to a lite backend which was pretty much just a python wrapper around a redis instance.

Throughout the course of the project, we realized we needed a better way to bring data in to make it easier to edit and manipulate. The current workflow had too many steps and required a couple of manual interventions which proved a challenge to fast iteration. The IDP needed to add, edit, and publish raids to the map easily so I built a tiny CMS with Django and React.
The CMS handles the management of the raids and composes a json payload which is delivered by the react frontend.

We used mapbox to design a map stripped out of the noisier components/layers.
The IDP specifically wanted to highlight specific tactics employed by ICE during these raids so we provide them as filters to make it easy to visually discern what is going on where.

This was a great project to work because of the obvious impact delivering visual information can have. We plan on making the ICE Raid CMS available to other legal service providers who have heard reports of ICE raids in other regions.

## Link to Project

- <a class="link near-white bb" href="https://raidsmap.immdefense.org">ICEWatch</a>

## Featured in

- <a class="link near-white bb" href="https://theintercept.com/2018/07/23/ice-raids-in-new-york/">The Intercept</a>
- <a class="link near-white bb" href="https://www.aljazeera.com/programmes/listeningpost/2018/12/ice-watch-turning-lens-immigration-agencies-181215122046031.html">Aljazeera</a>
- <a class="link near-white bb" href="https://www.teenvogue.com/story/what-happens-during-an-ice-raid">Teen Vogue</a>
- <a class="link near-white bb" href="https://www.amny.com/news/immigration-raids-nyc-1.20066686">AM New York</a>
- <a class="link near-white bb" href="https://www.metro.us/news/local-news/new-york/icewatch-ice-raids-map">Metro USA</a>

## Technologies

- React
- Mapbox
- Django
