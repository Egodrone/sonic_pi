use_synth :prophet

with_fx :reverb, room: 1 do
  live_audio :moog, amp: 3
end

live_loop :foo do
  #midi (octs :D1, 3).tick - 0, sustain: 0.1
  #play 30 - 7, release: 8, amp: 3, cutoff: 80
  play 30 - 5, release: 8, amp: 3, cutoff: 80
  sleep 8
  #sleep 0.125
end

live_loop :bar, sync: :bd do
  sample :bass_dnb_f
  #sample :tech_tops, 2, beat_stretch: 8, amp: 2
  #sample :bd_klub, 2, beat_stretch: 2, amp: 0.5
  sleep 8
end


live_loop :bd, sync: :foo do
  sample :bd_haus, cutoff: 80
  sleep 0.5
end
