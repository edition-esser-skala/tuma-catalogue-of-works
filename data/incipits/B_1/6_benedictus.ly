\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key es \major \time 3/4 \tempoMarkup "Andante"
    R2.*3
    r8 b g es' es es
    es([ d)] des des b' des,
    des([ c)] f f f f
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key es \major \time 3/4 \tempoMarkup "Andante"
    R2.*3
    r8 b g es' es es
    es([ d)] des des b' des,
    des([ c)] f f f f
  }
}

Basso = {
  \relative c {
    \clef bass
    \key es \major \time 3/4 \autoBeamOff \tempoMarkup "Andante"
    r4 b'^\solo es,
    f es es
    as as8[ g] as[ f]
    g4 es r
    R2.*2
  }
}

BassoLyrics = \lyricmode {
  Be -- ne --
  di -- ctus, qui
  ve -- nit, qui
  ve -- nit,
}

Organo = {
  \relative c {
    \clef bass
    \key es \major \time 3/4 \tempoMarkup "Andante"
    es,2-\solo g4
    as g2
    f b4
    es,2.
    b'4 f g
    as2 b4
  }
}

BassFigures = \figuremode {
  r2 <6>4
  q q2
  <7> q4
  r2.
  <4>8 <3> <6->4 <6 5>
  <5 4>8 <\t 3> <6>4 <_->
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
