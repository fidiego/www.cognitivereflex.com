---
title: IDP Raids Map
layout: project
description: IDP Raids Map and Raid CMS - A Tool for managing the ingress of report of ICE Raids and a map for vizualizing said raids.
backgroundColor: #f3efe0
---

![Screenshot of ICEWatch](/img/projects/idp/screen_001.png 'ICEWatch')

In 2016, an immigration attorney friend of mine put me in contact with the IDP. They had been working on a normalized intake form for ICE Raids in an effort to standardize some of the information necessary and were looking for technical help. This marked the beginning of a long collaboration with the IDP during which I helped them operationalize the data they had collected.

When I first came in contact with them, they were collecting intake from participating legal service providers via a google form. The form went to a spreadsheet which was then uploaded to a custom Zoho form. The first iteration was a Google AppScript plugin which automatically fetched location data given some columns in the spreadsheet and sent the data to a backend (python, tornado, & redis).

## Link to Project

- <a class="link near-white" href="https://raidsmap.immdefense.org">ICEWatch</a>

## Featured in

- <a class="link near-white" href="https://theintercept.com/2018/07/23/ice-raids-in-new-york/">The Intercept</a>
- <a class="link near-white" href="https://www.teenvogue.com/story/what-happens-during-an-ice-raid">Teen Vogue</a>

## Technologies

- React
- Mapbox
- Django
