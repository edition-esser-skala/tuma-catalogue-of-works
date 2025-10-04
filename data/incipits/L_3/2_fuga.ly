\version "2.24.2"
\include "header.ly"

OrganoR = \relative c' {
  \clef treble
  \key g \major \time 2/2 \tempoMarkup "Allegro moderato"
  << {
    R1*7
    d'2 e
    fis4( d) e fis
    g2. a4
  } \\ {
    g,2 a
    h4 e, a h
    c2. d4
    h2. e4
    a,2. d4
    h( g) c h
    a2.\trill g8 a
    g4 fis g a
    b h cis d
    e d cis a
  } >>
}

OrganoL = \relative c' {
  \clef treble
  \key g \major \time 2/2 \tempoMarkup "Allegro moderato"
  R1*10
}

Pedale = \relative c {
  \clef bass
  \key g \major \time 2/2 \tempoMarkup "Allegro moderato"
  R1*10
}

\score {
  <<
    \new PianoStaff \with { \setGroupDistance #11 #11 } <<
      \set PianoStaff.instrumentName = "Man."
      \new Staff { \OrganoR }
      \new Staff { \OrganoL }
    >>
    \new Staff {
      \set Staff.instrumentName = "Ped."
      \Pedale
    }
  >>
}
