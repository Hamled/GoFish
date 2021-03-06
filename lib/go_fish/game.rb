module GoFish
  class Game
    attr_accessor :num_players, :deck, :players

    def initialize(num_players)
      @num_players = num_players
      @players = []
      @deck = Deck.new.shuffle!
    end

    def create_player(name)
      player = GoFish::Player.new(name)
      player.secret_hand.draw(@deck,5)
      @players.push(player)
    end

  end
end
