# 🔍 Overview

In its daily workings, governments across local, state and national levels make various payments to people of a country. This may be in the form of subsidies, pensions, scholarships, incentives during emergencies and more. Citizens may choose to receive these payments in different ways such as through cash, bank transfers, mobile wallets, prepaid vouchers, etc.&#x20;

Each government entity who is a facilitator of any of these g2p benefit schemes is required to build its own system to verify individuals, authenticate transactions and transfer money. They often have to communicate across departments to accumulate all the data needed to make an informed decision regarding the eligibility for a payment transfer, and then across another set of departments to actually disburse that payment. In order to coordinate this monumental, yet routine effort, duplication of systems, effort and resources takes place at every level of government and across departments. It also causes delays, high costs, leakages and loss of transparency, as a result of which funds don’t always reach their intended beneficiaries.

Creating a centralised storage of data doesn’t work either because it creates honeypots that pose large security risks, have no formal method for setting accountability of data-updation and require building entirely new systems. This solution follows the traditional mindset of digitisation ie: taking things ‘online’ without accounting for political realities, human centric design, different speeds and degrees of adoption, and a future-focused, innovation mindset. This is not what Digital Public Infrastructure refers to.&#x20;

<mark style="color:blue;">**A G2P DPI is about building an overarching architecture that ensures interoperability, inclusions, privacy, security, autonomy and asynchronous adoption by design.**</mark>&#x20;

The common steps of executing any g2p payment includes:&#x20;

1. Checking for eligibility of the beneficiaries according to pre-set scheme criteria using data from federated functional registries
2. Authenticating the identity of the eligible beneficiaries using online/offline, self/assisted modes
3. Mapping the authenticated, eligible beneficiaries to a store of value of their choice in which they choose to receive these payments using multiple payment rails

The easiest way to increase the efficiency, effectiveness and security of these g2p payments is to build a secure, decentralised architecture that provides common building blocks (solving for the 3 points listed above), that individual departments can then customise on top. This is what G2P Connect solves!

G2P connect enables the creation of a shared infrastructure in a country that different agencies can use to deliver any kind of government to person payment digitally end-to-end. This includes establishing the identity of the beneficiary, eligibility, enrolment, mapping IDs to bank accounts, disbursement, last mile cash access  and scheme monitoring.&#x20;

<mark style="color:blue;">**G2P Connect is an open source effort to enable government-to-person digital payments built through interoperable**</mark> [<mark style="color:blue;">**standards**</mark>](https://g2p-connect.github.io/specs/dist/index.html) <mark style="color:blue;">**and design blueprints**</mark>

G2P Connect enables policy makers across various departments to ‘talk’ to each other without revealing any sensitive information. This means that:&#x20;

* Every department is allowed to own its own information. They simply standardise the information using a common identifier for each individual and link their database through APIs.&#x20;
* Other departments that require information to make a decision regarding a transfer, can specify their eligibility criteria (which can freely change with the times) as they do currently
* All systems are standardised to share telemetry information for policy makers to observe key performance metrics and to make informed decisions

Thus, autonomy, freedom of choice and change, and simplification of the process is ensured at each step.&#x20;

The process of a transaction carried out through G2P works like this (NOTE: this is a generalised flow, individual transactions may vary depending on sector of implementation):&#x20;

1. An individual will request funds from the scheme he is interested in and specify his store of value. He will provide his identifier number and may be required to do additional authentication (such as through OTPs or biometrics)&#x20;
2. His identifier number will be sent to the issuing department and a request will be logged.&#x20;
3. According to the eligibility criteria set out by the issuing department, this identifier number will be ‘mapped’ to the various data sources across government databases that host this relevant information. This will be done through the common APIs.&#x20;
4. The interface will not transfer any data from one store house to another, but simply return a ‘yes/no’ answer about whether the individual has met the eligibility criteria or not. The answers across databases will be compiled and a final ‘yes’ or ‘no’ answer will be communicated to the requesting department/agency.&#x20;
5. If the individual is eligible, then this identifier number will connect to the store of value he has chosen. The social benefit sponsoring  department simply has to authorise the transfer and the funds will reach the beneficiary’s account.&#x20;

This allows for a secure, quick transfer of funds from g2p across use cases and departments in a federated, using near real time info and in privacy protecting manner.&#x20;

G2P Connect also provides a range of other benefits for beneficiaries:&#x20;

* Beneficiaries get easy, secure, quick access to funds in cases of emergencies by undertaking minimal steps (sometimes as easy as entering their identifier number on the relevant government portal!)&#x20;
* Beneficiaries  get to authorise the sharing of their data with specific departments for specific purposes.
* Verification and authentication of transactions (through timestamps and digital signatures) prevent fraud from being carried out by citizens and prevent errors from the government’s side.&#x20;
