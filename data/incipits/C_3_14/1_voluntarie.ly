\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \minor \time 4/4 \tempoMarkup "Recitativo · Adagio"
    a'2\p b
    a1~
    a~
    a2 g~
    g g4 fis
    g8 d'-! es( d) r d-! c( b)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \minor \time 4/4 \tempoMarkup "Recitativo · Adagio"
    f2\p g
    e1
    d~
    d
    es2 a,
    g4 r8 a' b( a) r f!
  }
}

Basso = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4 \tempoMarkup "Recitativo · Adagio" \autoBeamOff
    r4 a'8^\solo a g8. g16 g4
    r r8 g g g f e
    f4 f r8 f f a
    fis fis fis e16 d g4 g
    es f8 g d4. d8
    g,4 r r2
  }
}

BassoLyrics = \lyricmode {
  Vo -- lun -- ta -- ri -- e
  sa -- cri -- fi -- ca -- bo
  ti -- bi et con -- fi --
  te -- bor no -- mi -- ni tu -- o,
  quo -- ni -- am bo -- num
  est.
}

Organo = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4 \tempoMarkup "Recitativo · Adagio"
    d1
    cis
    d
    c!2 b
    c d %5
    g,4 r8 fis' g( f) es? d
  }
}

BassFigures = \figuremode {
  r2 <6 4>
  <6 5>1
  r
  <4\+ 2>2 <6>
  <_-> <4>4 <_+>
  r4. <6>4 q8 q q
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
