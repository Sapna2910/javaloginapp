FROM openjdk:11 as base
WORKDIR /app
COPY . .

FROM tomcat:9
WORKDIR webapps
COPY --from=base /app/target/valaxy-2.0-RELEASE.war .
RUN rm -rf ROOT && mv valaxy-2.0-RELEASE.war ROOT.war
