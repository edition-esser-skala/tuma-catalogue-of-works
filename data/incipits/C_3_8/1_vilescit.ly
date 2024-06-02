\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    g'1\p
    \tuplet 3/2 8 { \sbOn e16\f h e e h e g e g h g h \sbOff } e2~\p
    e1~
    e2 \tuplet 3/2 8 { \sbOn d16\f fis, h h fis h d h d fis d fis \sbOff }
    h4 r r cis,-!
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    e1\p
    e16\f e e e e e e e g2\p
    e fis
    e4 fis fis16\f fis fis fis fis fis fis fis
    fis4 r r ais-!
  }
}

Viola = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    h1\p
    h16\f h h h h h h h h2\p
    cis1~
    cis2 h16\f h d d d d d d
    d4 r r fis-!
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 h' g8 g r a16 h
    h8 e, r4 r8 e16 e g8 fis16 e
    ais4 ais8 h16 cis cis8 fis, r fis
    g8. g16 fis8 cis d d r4
    r8 h' ais h h fis r4
  }
}

AltoLyrics = \lyricmode {
  Vi -- le -- scit mi -- hi
  mun -- dus, be -- a -- tis -- si -- ma
  lux coe -- lo re -- ful -- gens cor
  si -- de -- re o -- pta -- to
  quan -- do se -- re -- nat.
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    e1
    e16 e e e e e e e e2
    cis ais~
    ais h16 h h h h h h h
    h4 r r fis'
  }
}

BassFigures = \figuremode {
  r1
  r
  <6\\>2 <6 5 _+>
  <7 \t \t>4 <6 \t \t>2.
  r <5\+ _+>4
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff \with { \smallGroupDistance } <<
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
      \new Staff {
        \set Staff.instrumentName = "vla"
        \Viola
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
