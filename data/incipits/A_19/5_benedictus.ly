\version "2.24.2"
\include "header.ly"

ViolinoIeII = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Andante"
    h''4. a8 g16 e fis g fis h, a h
    g e' fis g fis h, a h g e' dis e h fis' e fis \gotoBar "9"
    e h c a g8 fis e4 r
    R1
    r2 r16 e' fis g fis h, a h
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    R1*2 \gotoBar "9"
    r2 h'4.^\solo a8
    g2 fis4 e
    e8[ fis16 g] fis8[ g16 a] g[ fis] e8 r4
  }
}

AltoLyrics = \lyricmode {
  Be -- ne --
  di -- ctus, qui
  ve -- _ _ nit
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Andante"
    \mvTr e8-\solo fis g dis e4 h'
    e, h8 dis e4 dis \gotoBar "9"
    g,8 a h h e, e' dis h
    e fis g a h a g e
    a4 h e, h8 dis
  }
}

BassFigures = \figuremode {
  r2. <_+>4
  r q2.
  <6>4 <4>8 <_+>4. r4
  r2 <_+>8 <6> q4
  r <_+>2 q4
}

\score {
  <<
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "vl" "1, 2" }
        \ViolinoIeII
      }
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics
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
