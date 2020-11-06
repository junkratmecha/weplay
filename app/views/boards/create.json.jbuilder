json.id         @board.id
json.content    @board.content
json.user_id    @board.user.id
json.clan_id    @board.clan.id
json.user_name  @board.user.name
json.user_image @board.user.image
json.created_at @board.created_at.strftime("%m月%d日 %H:%M")