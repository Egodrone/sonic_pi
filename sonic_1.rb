# Sonic Pi

use_bpm 244
use_synth :tech_saws

live_loop :main do
  i = 0
  16.times do
    if factor?(i, 20)
      play :G2
    else
      play :A2
    end
    sleep 1
    i = i + 1
  end
end

live_loop :cymbals, sync: :main do
  sync :main
  15.times do
    sample :drum_cymbal_closed
    sleep 1
  end
  sample :drum_cymbal_open
end

live_loop :elec, sync: :cymbals do
  #sample :elec_plip, beat_stretch: 2, amp: 0.5
  sleep 3;
end

live_loop :robot, sync: :main do
  #sample :glitch_robot1, beat_stretch: 2
  sleep 16
end



