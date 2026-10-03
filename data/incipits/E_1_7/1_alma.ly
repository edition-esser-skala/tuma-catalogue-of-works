\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key es \lydian \time 3/4 \tempoMarkup "Andante"
    r4 es8 f g as
    b[ g] es b'4 b8~
    b as4 as as8
    g as f4. es8
    es4 r r
    R2.*3
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key es \lydian \time 3/4 \tempoMarkup "Andante"
    r4 es8 d es f
    g g4 g g8
    g f4 f f8
    es c d4. es8
    es4 r r
    R2.*3
  }
}

BassoI = {
  \relative c {
    \clef bass
    \key es \lydian \time 3/4 \autoBeamOff \tempoMarkup "Andante"
    R2.*4
    r4 es8[^\solo f] g[ as]
    b[ g] es4 r
    r g b
    c8[ as es c] as4
  }
}

BassoILyrics = \lyricmode {
  Al -- ma,
  al -- ma
  Re -- dem --
  pto \hy
}

BassoII = {
  \relative c {
    \clef bass
    \key es \lydian \time 3/4 \autoBeamOff \tempoMarkup "Andante"
    R2.*5
    r4 \mvTr es8[^\solo f] g[ as]
    b[ g] es4 g8 g
    as2.
  }
}

BassoIILyrics = \lyricmode {
  Al -- ma,
  al -- ma Re -- dem --
  "pto -"
}

Organo = {
  \relative c {
    \clef bass
    \key es \lydian \time 3/4 \tempoMarkup "Andante"
    es4-\solo r r
    es g es
    f d b
    es8 as, b2
    es4 r r
    r es es
    es r r
    r as as
  }
}

BassFigures = \figuremode {
  r2.
  r4 <6>2
  <9 4>8 <8 _-> <5>4 <7>
  r <4> <3>
  r2.
  r
  r
  r
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
        \set Staff.instrumentName = "B 1"
        \new Voice = "BassoI" { \dynamicUp \BassoI }
      }
      \new Lyrics \lyricsto BassoI \BassoILyrics

      \new Staff {
        \set Staff.instrumentName = "B 2"
        \new Voice = "BassoII" { \dynamicUp \BassoII }
      }
      \new Lyrics \lyricsto BassoII \BassoIILyrics
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
