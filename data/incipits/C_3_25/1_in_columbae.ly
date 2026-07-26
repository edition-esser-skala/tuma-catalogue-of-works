\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Recitativo" \autoBeamOff
    c'8^\solo c d e h8. h16 h4
    r8 h h c16 d d8 g,16 g f8. g16
    e4 r r8 e' c a
    fis a \hA fis d r g' d h
    g e'([ c a)] g4( a8.)\trill a16
    g4 r r2
  }
}

SopranoLyrics = \lyricmode {
  In co -- lum -- bae spe -- ci -- e
  Scho -- la -- sti -- cae a -- ni -- ma vi -- sa
  est, fra -- ter -- na
  mens lae -- ta -- ta, lae -- ta -- ta
  est, lae -- ta -- ta
  est.
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Recitativo"
    c2 d~
    d h
    c1~
    c2 h
    c4 r d2
    g,4 r r2
  }
}

BassFigures = \figuremode {
  r2 <6>
  r q4 <5>
  r1
  <4\+ 2>2 <6>
  r <5 4>4 <\t _+>
  r1
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
