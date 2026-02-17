FROM twentycrm/twenty:latest

EXPOSE 3000

CMD ["yarn", "workspace", "@twenty-front/front", "start:prod"]
