class Game
  def score(array)

    total_score = 0
    partion_score = organize_score(array)
    partion_score.each_with_index do |frame, index|
      if frame[0] == 10
        next_2_frames = (partion_score[index +1].to_a + partion_score[index+2].to_a).flatten
        total_score = total_score + frame.inject(:+) + next_2_frames[0].to_i + next_2_frames[1].to_i
      elsif frame.inject(:+) == 10
        total_score = total_score + frame.inject(:+) + partion_score[index+1][0].to_i
      else
        total_score = total_score + frame.inject(:+)
      end
    end
    return total_score
  end

  def organize_score(scores_array)

    new_array = []

    while scores_array.length > 0
      if scores_array[0] == 10
        scores_array.delete_at(0)
        new_array.push([10])

      else
        first_el = scores_array[0].to_i
        second_el = scores_array[1].to_i
        new_array.push([first_el, second_el])
        scores_array.delete_at(0)
        scores_array.delete_at(0)
      end

      if new_array.length == 9
          new_array.push([scores_array].flatten)
          scores_array = []
      end
    end
    new_array
  end
end
