# Properties api

Small proyect that shows all the properties available as well as all the Tennants and which properties corresponds to each tennant 

## Getting started 

### Prerequisites 

<!-- #### 1 .- Git
The first thing you may need is Git. [Here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git/ "Installing git")  is a link to download in any operating system. -->



### Installing ruby 

First make check if you have Ruby installed ( > version 2.2.4 ). To check whether it's already installed on a UNIX-like system, open up a terminal window (e.g. Terminal on OS X) and type ruby -v at the command prompt. For example, you should see something similar to the following:

`$ ruby -v`
`ruby 3.0.0p0 (2020-12-25 revision 95aff21468) [x86_64-linux]`

If ruby is not installed,  you should choose one of the installation methods below.[The "Installing Ruby" page of the official Ruby language web site ](https://www.ruby-lang.org/en/documentation/installation/ "Ruby's installation page")  explains how to do this in a number of ways across many different systems.



Another suggestion may be using [Asdf, a multiple runtime version manager ](https://asdf-vm.com/#/core-manage-asdf "Asdf installation page") that can get you started rather quickly if the former ruby installation page was a little too much confusing.

### Installing rails

Now that you have Ruby installed we need to have rails installed.
To install rails use the gem install `gem install rails`
To verify everything is installed correctly run `rails --version`.
If it says something like `Rails 6.1.3` you are good to go.

If you seem to have problems to install both ruby or rails so far you can check [this link ](https://railskey.wordpress.com/2013/11/20/setup-ruby-on-rails-on-ubuntu/ "really good ubuntu guide"), its a really well explained guide to install rails on ubuntu.

### Installing Postgres ???
### Cloning and running the code locally

*To download the project you simply clone the git repository 

 `git clone https://github.com/Merak1/api_homie.git`

Then you need to install all the dependencies 

 `bundle install`

You create the DB and migrate the schema 
 `rake db:create`
 `db:migrate:reset`
 `db:migrate:seed `

You can run the application 

`rails server`

You should see something like this 
![alt text](https://i.imgur.com/lkskvCB.png)
## Usage

When the application is running you can access the data as an API call. 
We recomend you use [Postman ](https://www.postman.com/downloads/ "Postman download page") for this

Once you got postman you click on make new call
![Postman New ](https://i.imgur.com/E9mFGGm.png)

You type `http://127.0.0.1:3000/` on the bar to send the request 

![Postman Request](https://i.imgur.com/sjB5xdS.png)

In the headers tab, you add a Auhorization Key, and the value as Basic + the token povided as a user (in this case is `cGFydG5lcjE6MTIz` since is hardcoded. It is )
![](https://i.imgur.com/dCQvoZw.png)

You can access the endpoints by 

/properties 
/tennants

access a single tennant and its properties 

/tennants/1/properties

![](https://i.imgur.com/WFJRk8l.png )