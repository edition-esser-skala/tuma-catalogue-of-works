\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Allegro moderato"
    r8 a'' fis( g) a d16( h) \appoggiatura a8 g4\trill
    fis8 a, \sbOn \tuplet 3/2 8 { d16 fis e e g fis } fis4 \tuplet 3/2 8 { fis16 a g g h a } \sbOff \gotoBar "9"
    fis a, h( d) a( d) cis( g') fis8 d, r4
    r2 r8 a' \sbOn \tuplet 3/2 8 { d16 fis e e g fis }
    fis4 \tuplet 3/2 8 { fis16 a g g h a } \sbOff a8 d,, r4
    r8 d''4\p cis8 d4 r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Allegro moderato"
    r8 fis' d cis16( h) a8 h4 cis8
    d r r4 r8 a \sbOn \tuplet 3/2 8 { d16 fis e e g fis } \sbOff \gotoBar "9"
    d,16 fis g( h) fis8 e d r r4
    R1
    r8 a' \sbOn \tuplet 3/2 8 { d16 fis e e g fis } \sbOff fis4 r
    r8 h,\p e,4\trill fis r
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key d \major \time 4/4 \tempoMarkup "Allegro moderato" \autoBeamOff
    R1*2 \gotoBar "9"
    r2 r8 a'^\solo fis g
    a d16[ h] \appoggiatura a8 g8. g16 fis4 r
    r2 r8 a fis g
    a d16[ h] g8. g16 fis8 a a e
  }
}

AltoLyrics = \lyricmode {
  Va -- sti per
  or -- bem ca -- ni -- tur,
  va -- sti per
  or -- bem ca -- ni -- tur sa -- crum "sche -"
}

Organo = {
  \relative c {
    \clef bass
    \key d \major \time 4/4 \tempoMarkup "Allegro moderato"
    d4. e8 fis g e a
    d,4 r8 a' d d, r g \gotoBar "9"
    d4 r8 a' d,4 r8 e
    fis g e a d,4 r8 a'
    d d, r4 d'8 d, r e
    fis g e a d,4 cis
  }
}

BassFigures = \figuremode {
  r2 <6>
  r1
  r1
  r4. <7>8 r2
  r1
  r4 <7>2.
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
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
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
