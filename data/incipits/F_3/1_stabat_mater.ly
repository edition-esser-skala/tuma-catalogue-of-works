\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Larghetto"
    r2 g'4. g8
    a2 h4 c~
    c b2 as4 \gotoBar "8"
    g r r2
    R1*2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Larghetto"
    d4. d8 g2~
    g4 f2 es4
    des2 c \gotoBar "8"
    g4 r r2
    R1*2
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    R1*3 \gotoBar "8"
    r2 g4.^\solo g8
    a4. a8 h4 c~
    c b2 as4
  }
}

TenoreLyrics = \lyricmode {
  Sta -- bat
  ma -- ter do -- lo --
  "ro -"
}

Basso = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    R1*3 \gotoBar "8"
    d4.^\solo d8 g2~
    g4 f f es
    des2 c
  }
}

BassoLyrics = \lyricmode {
  Sta -- bat ma --
  ter do -- lo --
  "ro -"
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Larghetto"
    g'4-\solo f es b
    c d g, as
    f g e f \gotoBar "8"
    g f es b'
    c d g, as
    f g e f
  }
}

BassFigures = \figuremode {
  r2. <6>4
  <6 5>2 <7 _!>
  <6- 5>4 <5-> <6 5> <_->
  r2. <6>4
  <6 5>2 <7 _!>
  <6- 5>4 <5-> <6 5> <_->
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
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
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
